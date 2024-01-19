
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen, geometry-msgs, message-generation, message-runtime, nav-msgs, rosconsole, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-graft";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/graft-release/archive/release/noetic/graft/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "306d1bcdbac73fa4e78052f131880f6529ac561e50887f88a883e9575d804189";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs message-runtime nav-msgs rosconsole roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graft is not yet finished. It's intended to be a full replacement to
    robot_pose_ekf, including native absolute references, and arbitrary
    topic configuration.

    If you try to use Graft now, please note that not all parameters are
    configured and you will not always see a change in behavior by
    modifying the parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
