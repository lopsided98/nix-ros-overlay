
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen, geometry-msgs, message-generation, message-runtime, nav-msgs, rosconsole, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-graft";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/graft-release/archive/release/melodic/graft/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "9a8974a928fe75527071337fedbe94266631129c0a1b9cb9d9163b06302bedce";
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
