FROM phpswoole/swoole:4.4.14-php7.3

RUN \
  install-swoole-ext.sh async      4.4.14                                   && \
  install-swoole-ext.sh postgresql 4.4.14                                   && \
  install-swoole-ext.sh orm        877667f36a0ed2ddaf4bec8f3ca86550766cf119 && \
  install-swoole-ext.sh serialize  84982d6f6c68e000c1dbbae3bc46d3630ffef798 && \
  install-phpx.sh 0.2.0                                                     && \
  install-swoole-ext-zookeeper.sh  4ae5cdf2aa630dfd590fa63f1779eb2a8a8d2950 && \
  docker-php-ext-enable \
      swoole_async      \
      swoole_postgresql \
      swoole_orm        \
      swoole_serialize  \
      swoole_zookeeper
