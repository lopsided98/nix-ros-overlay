
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, git, catkin, cacert, scons, openssl, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-libmongocxx-ros";
  version = "0.4.4-r2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/libmongocxx_ros/0.4.4-2.tar.gz;
    sha256 = "4922232d723742ad144ffa501869d385d9bc6a4a542345a162178f5a53313faa";
  };

  buildInputs = [ boost git cacert openssl roscpp ];
  propagatedBuildInputs = [ openssl roscpp boost ];
  nativeBuildInputs = [ scons catkin ];

  meta = {
    description = ''A wrapper for the libmongocxx for mongodb_store'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
