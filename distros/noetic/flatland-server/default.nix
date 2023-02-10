
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, flatland-msgs, geometry-msgs, interactive-markers, libyamlcpp, lua, opencv, pluginlib, roscpp, std-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-flatland-server";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_server/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "a287943a19195f43545aa4555aabb714a905ca4326d45b42ba47a8cf89741615";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ flatland-msgs geometry-msgs interactive-markers libyamlcpp lua opencv pluginlib roscpp std-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The flatland_server package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
