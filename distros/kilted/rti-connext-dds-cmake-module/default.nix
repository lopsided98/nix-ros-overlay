
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-rti-connext-dds-cmake-module";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/kilted/rti_connext_dds_cmake_module/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "062533a4cedbd29054b5894a31874801bbd14785da2233be521fa9a632d21533";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Helper module to provide access to RTI products like Connext DDS Professional";
    license = with lib.licenses; [ asl20 ];
  };
}
