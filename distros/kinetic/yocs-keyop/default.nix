
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-exceptions, ecl-threads, ecl-time, geometry-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-keyop";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_keyop/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "c999362e06481f97db0fe822a662f1248b139a535bb97ed5c0491cbbc262cbad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-exceptions ecl-threads ecl-time geometry-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Keyboard teleoperation for your robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
