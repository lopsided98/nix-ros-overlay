
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-pal-hardware-interfaces";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hardware_interfaces-release/archive/release/kinetic/pal_hardware_interfaces/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "aab566e09adc7db91774769602e1806f087fdb62970a453e7707ca5596c44f13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pal_hardware_interfaces package'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
