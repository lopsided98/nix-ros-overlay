
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, console-bridge, catkin, rosconsole }:
buildRosPackage {
  pname = "ros-lunar-rosconsole-bridge";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosconsole_bridge-release/archive/release/lunar/rosconsole_bridge/0.5.2-0.tar.gz;
    sha256 = "7d3b933f6f683d7336a687caab80989a0af1c5f1308a01c388e0186c21a3c95f";
  };

  buildInputs = [ console-bridge rosconsole ];
  propagatedBuildInputs = [ console-bridge rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosconsole_bridge is a package used in conjunction with console_bridge and rosconsole for connecting console_bridge-based logging to rosconsole-based logging.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
