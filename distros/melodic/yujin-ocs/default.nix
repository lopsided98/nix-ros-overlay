
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-cmd-vel-mux, yocs-controllers, yocs-diff-drive-pose-controller, yocs-joyop, yocs-keyop, yocs-math-toolkit, yocs-rapps, yocs-safety-controller, yocs-velocity-smoother, yocs-virtual-sensor, yocs-waypoints-navi }:
buildRosPackage {
  pname = "ros-melodic-yujin-ocs";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yujin_ocs/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "fda374e1eaa08d31770f20eb374a2f781cf7a284403323c7d197f31428d9b1e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ yocs-cmd-vel-mux yocs-controllers yocs-diff-drive-pose-controller yocs-joyop yocs-keyop yocs-math-toolkit yocs-rapps yocs-safety-controller yocs-velocity-smoother yocs-virtual-sensor yocs-waypoints-navi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin Robot's open-source control software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
