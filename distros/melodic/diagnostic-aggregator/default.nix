
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, bondpy, catkin, diagnostic-msgs, pluginlib, roscpp, rospy, rostest, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-aggregator";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_aggregator/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "1cba04421e31f4da80bddf6edd60c08b13c98cdb62ab3bfdf496517d752924b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ bondcpp bondpy diagnostic-msgs pluginlib roscpp rospy xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
