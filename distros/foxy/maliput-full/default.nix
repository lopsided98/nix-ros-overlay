
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, maliput, maliput-dragway, maliput-drake, maliput-integration, maliput-malidrive, maliput-multilane, maliput-object, maliput-object-py, maliput-py }:
buildRosPackage {
  pname = "ros-foxy-maliput-full";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_infrastructure-release/archive/release/foxy/maliput_full/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "3d6e191e7efa5169c258c109d0f67b3d2859d36d7e4bc65407d2271f95363016";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ maliput maliput-dragway maliput-drake maliput-integration maliput-malidrive maliput-multilane maliput-object maliput-object-py maliput-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that concentrates all maliput-related packages'';
    license = with lib.licenses; [ bsd3 ];
  };
}
