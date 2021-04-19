
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rdl-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rdl-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_msgs/3.2.0-1/rdl_release-release-melodic-rdl_msgs-3.2.0-1.tar.gz";
    name = "rdl_release-release-melodic-rdl_msgs-3.2.0-1.tar.gz";
    sha256 = "e51406d626a0114ed044ee5e90462bc10737ed057a5abf50f808fdea52cd6ddf";
  };

  buildType = "catkin";
  buildInputs = [ rdl-cmake ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom msgs for rdl types'';
    license = with lib.licenses; [ "zlib" ];
  };
}
