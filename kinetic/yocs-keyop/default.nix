
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ecl-time, std-msgs, catkin, ecl-exceptions, roscpp, ecl-threads }:
buildRosPackage {
  pname = "ros-kinetic-yocs-keyop";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_keyop/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "c999362e06481f97db0fe822a662f1248b139a535bb97ed5c0491cbbc262cbad";
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
