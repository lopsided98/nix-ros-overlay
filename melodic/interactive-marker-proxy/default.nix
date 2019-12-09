
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, interactive-markers, catkin, visualization-msgs, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-proxy";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/interactive_marker_proxy-release/archive/release/melodic/interactive_marker_proxy/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "39123a492c42042c9566254a5342fa930f30cf26c0bc2279b83135477ef56bce";
  };

  buildType = "catkin";
  buildInputs = [ roscpp message-generation visualization-msgs interactive-markers ];
  propagatedBuildInputs = [ message-runtime interactive-markers visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Proxy Server for Interactive Markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
