
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-sick-s300";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_sick_s300/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "4e5fb1f862a932be6111d0aab7668cce0886b14b835bb03417d3d3e87141340b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost diagnostic-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package published a laser scan message out of a Sick S300 laser scanner.";
    license = with lib.licenses; [ asl20 ];
  };
}
