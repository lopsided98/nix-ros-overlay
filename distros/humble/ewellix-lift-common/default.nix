
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ewellix-description, ewellix-interfaces, ewellix-moveit-config }:
buildRosPackage {
  pname = "ros-humble-ewellix-lift-common";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/humble/ewellix_lift_common/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ab09c0d625e386c0038b452b3f16e3d57adfd724b3f8e134937e0287295bc700";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ewellix-description ewellix-interfaces ewellix-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for common Ewellix lift packages";
    license = with lib.licenses; [ bsd3 ];
  };
}
