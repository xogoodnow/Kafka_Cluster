all:
    children:
        kafka:
            hosts:
            %{ for index, ip in kafka_ips }
                kafka-hel-${index}:
                    ansible_host: ${ip}
                    ansible_user: root
                    mode: 'kafka'
                    init_cluster: ${index == 0 ? "'true'" : "'false'"}
                    kafka_number: ${index == 0 ? "'1'" : index == 1 ? "'2'" : "'3'" }
            %{ endfor }
        monitoring:
            hosts:
            %{ for index, ip in monitoring_ips }
                monitoring-hel-${index}:
                    ansible_host: ${ip}
                    ansible_user: root
                    mode: 'monitoring'
                    init_cluster: 'false'
            %{ endfor }