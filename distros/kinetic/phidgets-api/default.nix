
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21 }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-api";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_api/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "ed886454294daed65b07f850a23c9c6c74a9141bb47216e5f3e159ba140cd411";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget21 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
