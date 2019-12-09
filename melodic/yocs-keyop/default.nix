
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ecl-time, std-msgs, catkin, ecl-exceptions, roscpp, ecl-threads }:
buildRosPackage {
  pname = "ros-melodic-yocs-keyop";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_keyop/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "9b6de8d0572c1d3c31cca79bf6ad19f484cc7f0bbb4c6af27012f6eaf010f26d";
  };

  buildType = "catkin";
  buildInputs = [ ecl-time geometry-msgs std-msgs ecl-exceptions roscpp ecl-threads ];
  propagatedBuildInputs = [ ecl-time geometry-msgs std-msgs ecl-exceptions roscpp ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Keyboard teleoperation for your robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
