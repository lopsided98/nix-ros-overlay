
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, robotnik-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-pad";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_pad/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "397414a554081a003547e7225887b5e71ac82e3c8c17817faf6cb456c56a58df";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs robotnik-msgs diagnostic-updater message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs robotnik-msgs diagnostic-updater message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_xl_pad package allows to control the summit_xl product range (summit_xl, summit_xl_omni, x_wam) teleoperation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
