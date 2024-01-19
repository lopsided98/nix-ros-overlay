
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-sob-layer";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/dorezyuk/sob_layer-release/archive/release/noetic/sob_layer/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "299f36006f303aaadc08ae0c47f92ccb4890517ae524e3290939dd1035cdf68b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-replacement for the default costmap_2d::InflationLayer.'';
    license = with lib.licenses; [ mit ];
  };
}
