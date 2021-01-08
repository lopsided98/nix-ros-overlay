
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, geometry-msgs, kobuki-description, kobuki-msgs, nav-msgs, nodelet, robot-state-publisher, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-softnode";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_soft-release/archive/release/kinetic/kobuki_softnode/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "4dfe45f4d62f9c3645046f4ef432126b33477a58ea95d4cee0db1128141be6e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator geometry-msgs kobuki-description kobuki-msgs nav-msgs nodelet robot-state-publisher roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelet for fake Kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
