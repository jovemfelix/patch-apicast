NAME        SERVICES_FILTER_BY_URL
{range .items[*]}
{.metadata.name}{'\t'}{.spec.servicesFilterByURL}
{end}
