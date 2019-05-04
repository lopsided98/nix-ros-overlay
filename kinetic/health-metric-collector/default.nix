
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-monitoring-msgs, catkin, rostest, message-generation, aws-common, message-runtime, rospy, std-msgs, aws-ros1-common, roscpp, gmock }:
buildRosPackage {
  pname = "ros-kinetic-health-metric-collector";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/health_metric_collector-release/archive/release/kinetic/health_metric_collector/2.0.0-1.tar.gz;
    sha256 = "0d664c1d3cc8d426d981635855042617a1ea512ac39537df5d543f09079a0114";
  };

  buildInputs = [ roscpp message-generation aws-common rospy std-msgs aws-ros1-common ros-monitoring-msgs ];
  checkInputs = [ rostest gmock ];
  propagatedBuildInputs = [ ros-monitoring-msgs message-generation aws-common message-runtime rospy std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    license = with lib.licenses; [ asl20 ];
  };
}
