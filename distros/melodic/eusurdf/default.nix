
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, pythonPackages, roseus, rostest }:
buildRosPackage {
  pname = "ros-melodic-eusurdf";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/eusurdf/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "e65fe8bb4fa58516ec9b7833d07302ee91b8283808e5fe7f18c31db1f974722f";
  };

  buildType = "catkin";
  buildInputs = [ catkin roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros pythonPackages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
