
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-melodic-tf2-bullet";
  version = "0.6.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_bullet/0.6.5-0.tar.gz";
    name = "0.6.5-0.tar.gz";
    sha256 = "2cb1d1e6d4ba180010c3f53ac138ba147ef4fb2c037d1b76be5cfb7d60ecd8e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ bullet geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''tf2_bullet'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
