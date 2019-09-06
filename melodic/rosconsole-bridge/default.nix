
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, console-bridge, catkin, rosconsole, cpp-common }:
buildRosPackage {
  pname = "ros-melodic-rosconsole-bridge";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole_bridge-release/archive/release/melodic/rosconsole_bridge/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "d47fadd37a04d4f165bef5173d536190baa3006dac2fa0235a14527d32169afc";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole console-bridge cpp-common ];
  propagatedBuildInputs = [ rosconsole console-bridge cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosconsole_bridge is a package used in conjunction with console_bridge and rosconsole for connecting console_bridge-based logging to rosconsole-based logging.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
