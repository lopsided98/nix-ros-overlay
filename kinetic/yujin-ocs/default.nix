
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yocs-math-toolkit, yocs-rapps, yocs-safety-controller, catkin, yocs-joyop, yocs-cmd-vel-mux, yocs-virtual-sensor, yocs-diff-drive-pose-controller, yocs-velocity-smoother, yocs-keyop, yocs-waypoints-navi, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-yujin-ocs";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yujin_ocs/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "a087d0e53e7267af031f83f6773e8286bbe0c7d8492ba3a27520209a7318577b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ yocs-math-toolkit yocs-rapps yocs-safety-controller yocs-joyop yocs-cmd-vel-mux yocs-virtual-sensor yocs-diff-drive-pose-controller yocs-velocity-smoother yocs-keyop yocs-waypoints-navi yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin Robot's open-source control software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
