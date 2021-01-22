
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, message-generation, message-runtime, robotnik-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-pad";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_pad/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "397414a554081a003547e7225887b5e71ac82e3c8c17817faf6cb456c56a58df";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs message-runtime robotnik-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_xl_pad package allows to control the summit_xl product range (summit_xl, summit_xl_omni, x_wam) teleoperation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
