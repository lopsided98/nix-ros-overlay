
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch";
  version = "0.10.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch/0.10.9-1.tar.gz";
    name = "0.10.9-1.tar.gz";
    sha256 = "362610332c856c6f1054e53b6f33429008af8405b0e5960490aa85971b1ac6b6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.lark ];

  meta = {
    description = ''The ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
