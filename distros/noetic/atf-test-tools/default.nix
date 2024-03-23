
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-atf-test-tools";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf_test_tools/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4ae54792d90640acd1915b197046736386dc08a2e39b2df6852b0edf901484b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rospy tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Support package for the ATF test app packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
