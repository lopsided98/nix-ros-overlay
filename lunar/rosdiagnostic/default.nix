
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-rosdiagnostic";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/rosdiagnostic/1.9.3-0.tar.gz;
    sha256 = "441d4777c804d32f092c98713ff30c4e2e3c9f4d3e955720b83f422f8601a3ea";
  };

  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    #license = lib.licenses.BSD;
  };
}
