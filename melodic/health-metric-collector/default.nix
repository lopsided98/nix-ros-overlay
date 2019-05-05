
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

  buildInputs = [ roscpp message-generation aws-common rospy std-msgs aws-ros1-common ros-monitoring-msgs ];
  checkInputs = [ rostest gmock ];
  propagatedBuildInputs = [ ros-monitoring-msgs message-generation aws-common message-runtime rospy std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    license = with lib.licenses; [ asl20 ];
  };
}
