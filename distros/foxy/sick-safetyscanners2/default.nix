
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces }:
buildRosPackage {
  pname = "ros-foxy-sick-safetyscanners2";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2-release/archive/release/foxy/sick_safetyscanners2/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "8151a4349dfb65f1f2202dd5ae40d8b217bb13cd9e9d3833cbd0b8253f96f77c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ sensor-msgs sick-safetyscanners-base sick-safetyscanners2-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Driver for the SICK safetyscanners'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
