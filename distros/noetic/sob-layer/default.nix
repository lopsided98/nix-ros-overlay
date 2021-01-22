
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-sob-layer";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/dorezyuk/sob_layer-release/archive/release/noetic/sob_layer/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "36f7c92005ca9a03b8b335f36b46dddedf04d70ba03aabffcd38d7820697259c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-replacement for the default costmap_2d::InflationLayer.'';
    license = with lib.licenses; [ mit ];
  };
}
