
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-lunar-naoqi-libqi";
  version = "2.5.0-r2";

  src = fetchurl {
    url = https://github.com/ros-naoqi/libqi-release/archive/release/lunar/naoqi_libqi/2.5.0-2.tar.gz;
    sha256 = "358c065cec4769dd9038a2fc5ac40566f12e2090a2a0cf1eb8f92abc30a2e857";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Aldebaran's libqi: a core library for NAOqiOS development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
