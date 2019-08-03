
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-monitoring-msgs, gtest, catkin, rostest, message-generation, aws-common, message-runtime, rospy, std-msgs, aws-ros1-common, roscpp, gmock }:
buildRosPackage {
  pname = "ros-melodic-health-metric-collector";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/health_metric_collector-release/archive/release/melodic/health_metric_collector/2.0.1-1.tar.gz;
    sha256 = "f5e60876143b1062f020f54087a4513795c1f1b5b1c8facc4b466a95ac25a7a9";
  };

  buildInputs = [ roscpp message-generation aws-common rospy std-msgs aws-ros1-common ros-monitoring-msgs ];
  checkInputs = [ rostest gtest gmock ];
  propagatedBuildInputs = [ ros-monitoring-msgs message-generation aws-common message-runtime rospy std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    license = with lib.licenses; [ asl20 ];
  };
}
