
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, geometry-msgs, message-generation, message-runtime, roscpp, roscpp-serialization, soem, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-adi-tmc-coe";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl_coe-release/archive/release/noetic/adi_tmc_coe/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "282e91770e81f785118f6013e870ccb3f4dc4b38f63982550a7cbaac25ddb9b0";
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
