
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-cmd-vel-mux, yocs-controllers, yocs-diff-drive-pose-controller, yocs-joyop, yocs-keyop, yocs-math-toolkit, yocs-rapps, yocs-safety-controller, yocs-velocity-smoother, yocs-virtual-sensor, yocs-waypoints-navi }:
buildRosPackage {
  pname = "ros-kinetic-yujin-ocs";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yujin_ocs/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "a087d0e53e7267af031f83f6773e8286bbe0c7d8492ba3a27520209a7318577b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ yocs-cmd-vel-mux yocs-controllers yocs-diff-drive-pose-controller yocs-joyop yocs-keyop yocs-math-toolkit yocs-rapps yocs-safety-controller yocs-velocity-smoother yocs-virtual-sensor yocs-waypoints-navi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin Robot's open-source control software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
