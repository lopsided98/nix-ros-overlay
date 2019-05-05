
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-lunar-geneus";
  version = "2.2.6";

  src = fetchurl {
    url = https://github.com/tork-a/geneus-release/archive/release/lunar/geneus/2.2.6-0.tar.gz;
    sha256 = "154b49e570e2016b1eb9aecfbb233149302a445733bd0a6fd1f78d5e2d6c3988";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
