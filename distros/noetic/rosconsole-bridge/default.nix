
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, console-bridge, cpp-common, rosconsole }:
buildRosPackage {
  pname = "ros-noetic-rosconsole-bridge";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole_bridge-release/archive/release/noetic/rosconsole_bridge/0.5.5-1.tar.gz";
    name = "0.5.5-1.tar.gz";
    sha256 = "69da97d7a98b8de418315bfa1edaf04691c46497137384c5a5056964d1829e2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ console-bridge cpp-common rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosconsole_bridge is a package used in conjunction with console_bridge and rosconsole for connecting console_bridge-based logging to rosconsole-based logging.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
