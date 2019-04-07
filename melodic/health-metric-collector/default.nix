
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-monitoring-msgs, catkin, rostest, message-generation, aws-common, message-runtime, rospy, std-msgs, aws-ros1-common, roscpp, gmock }:
buildRosPackage {
  pname = "ros-melodic-health-metric-collector";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/health_metric_collector-release/archive/release/melodic/health_metric_collector/2.0.0-0.tar.gz;
    sha256 = "a0b78f0e8e9edbbea16f0837f64764358c03dad0b2e2bd07012c802697b20d78";
  };

  buildInputs = [ message-generation aws-common rospy std-msgs aws-ros1-common ros-monitoring-msgs roscpp ];
  checkInputs = [ rostest gmock ];
  propagatedBuildInputs = [ message-generation aws-common message-runtime ros-monitoring-msgs rospy std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    #license = lib.licenses.Apache 2.0;
  };
}
