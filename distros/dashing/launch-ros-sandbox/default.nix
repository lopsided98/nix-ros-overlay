
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, launch-ros, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-launch-ros-sandbox";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros-security/launch_ros_sandbox-release/archive/release/dashing/launch_ros_sandbox/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "da2b79de6730fc77e2655ebda0137fbde36981f2e2ec8e67e54fa7df05d0669a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros python3Packages.docker ];

  meta = {
    description = ''Extension to launch_ros to provide the ability to run nodes in sandboxed environments.'';
    license = with lib.licenses; [ asl20 ];
  };
}
