
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces }:
buildRosPackage {
  pname = "ros-foxy-sick-safetyscanners2";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2-release/archive/release/foxy/sick_safetyscanners2/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "5847246ad4523ae0563e881b7fc6fb37071eddee47283a9b89b5b102f59da3af";
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
