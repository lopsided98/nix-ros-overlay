
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yocs-diff-drive-pose-controller, yocs-keyop, catkin, yocs-math-toolkit, yocs-waypoints-navi, yocs-velocity-smoother, yocs-virtual-sensor, yocs-safety-controller, yocs-rapps, yocs-joyop, yocs-cmd-vel-mux, yocs-controllers }:
buildRosPackage {
  pname = "ros-melodic-yujin-ocs";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yujin_ocs/0.8.2-0.tar.gz;
    sha256 = "fda374e1eaa08d31770f20eb374a2f781cf7a284403323c7d197f31428d9b1e5";
  };

  propagatedBuildInputs = [ yocs-diff-drive-pose-controller yocs-keyop yocs-math-toolkit yocs-waypoints-navi yocs-velocity-smoother yocs-virtual-sensor yocs-safety-controller yocs-rapps yocs-joyop yocs-cmd-vel-mux yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin Robot's open-source control software'';
    #license = lib.licenses.BSD;
  };
}
