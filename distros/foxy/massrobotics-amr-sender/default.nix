
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, tf2, tf2-bullet, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-foxy-massrobotics-amr-sender";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/foxy/massrobotics_amr_sender/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b9c69911bba3d3f4343fad093bcc3ba4eab28bf8225804167fb0419a6aea79f2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.jsonschema python3Packages.mock python3Packages.pep8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.websockets rclpy tf2 tf2-bullet tf2-eigen tf2-eigen-kdl tf2-geometry-msgs tf2-kdl tf2-msgs tf2-py tf2-ros tf2-sensor-msgs tf2-tools ];

  meta = {
    description = ''MassRobotics AMR Interop Sender'';
    license = with lib.licenses; [ "3-Clause-BSD-License" ];
  };
}
