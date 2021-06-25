
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nao-interfaces";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_interfaces-release/archive/release/galactic/nao_interfaces/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "4315ed423139f8ff30caab19a860260f0a54d096cbe945b34eac665fe87b0e69";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing interfaces to be used with a NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
