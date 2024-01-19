
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, python3Packages, pythonPackages, rospy, sensor-msgs, std-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-massrobotics-amr-sender";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/noetic/massrobotics_amr_sender/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8dcdb3482f774de4774b744a03d8fbe17f8325d8f4412d4da254d81f425f7611";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.jsonschema python3Packages.mock python3Packages.pep8 python3Packages.pytest-mock python3Packages.pyyaml pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.pykdl python3Packages.websockets rospy sensor-msgs std-msgs tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MassRobotics AMR Interop Sender'';
    license = with lib.licenses; [ "3-Clause-BSD-License" ];
  };
}
