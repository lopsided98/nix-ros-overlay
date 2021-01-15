
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-exceptions, ecl-time, geometry-msgs, joy, roscpp, sensor-msgs, std-msgs, yocs-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-joyop";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_joyop/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "7a3d626d044154e93c4d24a23f7c3dcc37cf0f182ed61cc0a40a55a623e85495";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-exceptions ecl-time geometry-msgs joy roscpp sensor-msgs std-msgs yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Joystick teleoperation for your robot robot core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
