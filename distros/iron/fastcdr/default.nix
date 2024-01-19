
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-fastcdr";
  version = "1.0.27-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/iron/fastcdr/1.0.27-3.tar.gz";
    name = "1.0.27-3.tar.gz";
    sha256 = "92c494f64ba089bf2f14f3879c34a6bf79f46b6452d28118282d87f55d97e4f8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
