
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, interactive-markers, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-lunar-interactive-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/interactive_marker_tutorials/0.10.3-0.tar.gz;
    sha256 = "69a428e132598d4ba914e1db906430527019ad0268e721109d78816d360a6733";
  };

  buildInputs = [ roscpp tf interactive-markers visualization-msgs ];
  propagatedBuildInputs = [ roscpp tf interactive-markers visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interactive_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
