
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, control-msgs, realtime-tools, catkin, tinyxml, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-control-toolbox";
  version = "1.16.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_toolbox-release/archive/release/lunar/control_toolbox/1.16.0-0.tar.gz;
    sha256 = "b38d1b39b0328ba87e4f7c6b777039183c65a8a3007063f84b491a202a0f8610";
  };

  buildInputs = [ cmake-modules control-msgs realtime-tools tinyxml message-generation dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ cmake-modules control-msgs realtime-tools tinyxml message-runtime dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
