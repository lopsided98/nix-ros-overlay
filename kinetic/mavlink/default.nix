
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-mavlink";
  version = "2019.7.7-r1";

  src = fetchurl {
    url = https://github.com/mavlink/mavlink-gbp-release/archive/release/kinetic/mavlink/2019.7.7-1.tar.gz;
    sha256 = "4f8e44bb5d7934acec907e974e6ad50656f99ef8229e5d168ca8c1058350dc4c";
  };

  buildInputs = [ pythonPackages.future python pythonPackages.lxml pythonPackages.setuptools ];
  propagatedBuildInputs = [ python catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
