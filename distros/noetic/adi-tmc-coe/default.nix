
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, geometry-msgs, message-generation, message-runtime, roscpp, roscpp-serialization, soem, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-adi-tmc-coe";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl_coe-release/archive/release/noetic/adi_tmc_coe/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "1982f3185179e5350f7e179e541724e96a456c2cf27747e90b13ae23f55c50e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ ethercat-grant geometry-msgs message-runtime roscpp roscpp-serialization soem std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The adi_tmc_coe package";
    license = with lib.licenses; [ bsd3 ];
  };
}
