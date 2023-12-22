
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, flatland-msgs, geometry-msgs, interactive-markers, lua, opencv, pluginlib, roscpp, std-msgs, std-srvs, tf2, tf2-geometry-msgs, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-flatland-server";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_server/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "d460757818012c73a849d5ddba63e79fb5a1a1cd2b7e6281900a0b345411357e";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ flatland-msgs geometry-msgs interactive-markers lua opencv opencv.cxxdev pluginlib roscpp std-msgs std-srvs tf2 tf2-geometry-msgs visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The flatland_server package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
