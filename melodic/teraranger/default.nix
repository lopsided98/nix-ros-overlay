
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, serial, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-teraranger";
  version = "2.1.0-r1";

  src = fetchurl {
    url = https://github.com/Terabee/teraranger-release/archive/release/melodic/teraranger/2.1.0-1.tar.gz;
    sha256 = "7a46f25a882f135c1261b889e11462660d26f4b6e6d288d8b2026dfda5f4bc0a";
  };

  buildInputs = [ sensor-msgs serial dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs serial dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for single sensors from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
