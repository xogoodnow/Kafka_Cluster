127.0.0.1 localhost

%{ for index, ip in kafka_ips }
${ip} kafka-${index}
%{ endfor }

%{ for index, ip in monitoring_ips }
${ip} monitoring-${index}
%{ endfor }


ff02::1 ip6-allnodes
ff02::2 ip6-allrouters







