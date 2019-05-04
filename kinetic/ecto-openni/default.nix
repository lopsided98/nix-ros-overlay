
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, libusb1, ecto }:
buildRosPackage {
  pname = "ros-kinetic-ecto-openni";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ecto_openni-release/archive/release/kinetic/ecto_openni/0.4.0-0.tar.gz;
    sha256 = "3d564af70371330d97eabcf5fe0bad79f91be74227d6eb54b9dd00a3621d831c";
  };

  buildInputs = [ libusb1 ecto cv-bridge boost ];
  propagatedBuildInputs = [ libusb1 ecto cv-bridge boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecto bindings for the openni sensor.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
