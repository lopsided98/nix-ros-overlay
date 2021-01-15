
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, message-generation, message-runtime, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-interactive-marker-proxy";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/interactive_marker_proxy-release/archive/release/kinetic/interactive_marker_proxy/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "e8897cc0cdf968b281e777aa3362da2cd5405c79b20f4b7d591997fdb8e187a9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ interactive-markers message-runtime roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Proxy Server for Interactive Markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
