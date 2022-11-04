
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodePackages, nodejs, rospack }:
buildRosPackage {
  pname = "ros-melodic-vapor-master";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/roshub/vapor_master-release/archive/release/melodic/vapor_master/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "c6fc8a631a9237b71a58f298e1394f498f3374ba2698c365f0aae44e5a75ca32";
  };

  buildType = "catkin";
  buildInputs = [ catkin nodePackages.npm ];
  propagatedBuildInputs = [ nodejs rospack ];
  nativeBuildInputs = [ catkin nodePackages.npm nodejs ];

  meta = {
    description = ''high availability ros master'';
    license = with lib.licenses; [ asl20 ];
  };
}
