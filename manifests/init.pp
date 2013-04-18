class repo_dag
{
    include repo_dag::config

    yumrepo {
        # CentOS Source Files
        "dag":
            baseurl => 'http://apt.sw.be/redhat/el$releasever/en/$basearch/dag',
            descr => 'Dag RPM Repository for Red Hat Enterprise Linux',
            failovermethod => 'priority',
            enabled => 1,
            gpgcheck => 0,
            require => [
                Host['repo_centos']
            ];
    }
}
