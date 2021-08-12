import 'package:domal/Screens/MeasurementScreen/components/kAddSubmitButtonComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kAluminumCostComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kAluminumWasteageCostComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kAvailable_track_ft_size.dart';
import 'package:domal/Screens/MeasurementScreen/components/kAvailable_track_ft_size_kg.dart';
import 'package:domal/Screens/MeasurementScreen/components/kDisplaySavedData.dart';
import 'package:domal/Screens/MeasurementScreen/components/kGlassCostPSFComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kGlassShutterPlusMinusComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kOnePisScrewCost.dart';
import 'package:domal/Screens/MeasurementScreen/components/kOtherCostingComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kQuantityFormateComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kQuatestionFormateComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kSaveEditButtonComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kSelectCotingTypeComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kSelect_window_type_component.dart';
import 'package:domal/Screens/MeasurementScreen/components/kSixMMWoolPileComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kTotalWindowSquareFeetComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kWindow_panal_height_component.dart';
import 'package:domal/Screens/MeasurementScreen/components/kWindow_panal_width_component.dart';
import 'package:domal/Screens/MeasurementScreen/components/kwidth_height_component.dart';
import 'package:domal/State/MeasurementNewState.dart';
import 'package:flutter/material.dart';

class KFormContainer extends StatelessWidget {
  const KFormContainer({
    Key? key,
    required GlobalKey<FormState> formKey,
    required MeasurementNewState provider,
  })  : _formKey = formKey,
        _provider = provider,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final MeasurementNewState _provider;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _formKey,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              KDisplySavedDataComponent(
                number: "1",
                trackNumber: "2",
                onTap: () {},
              ),
              KWidthHeightComponent(),
              KTotalWindowSquareFeetComponent(),
              KSelectWindowTypeComponent(),
              !_provider.is1Saved ? KWindowPanalWidthComponent() : Container(),
              !_provider.is1Saved ? KWindowPanalHeightComponent() : Container(),
              !_provider.is1Saved
                  ? KAvailableTrackFeetSizeComponent()
                  : Container(),
              !_provider.is1Saved
                  ? KAvailableTrackFeetSizeKGComponent()
                  : Container(),
              KSaveEditButtonComponent(
                onSave: () {
                  _provider.setIs1SetTrue();
                },
                onEdit: () {
                  _provider.setIs1SetFalse();
                },
              ),
              KAluminumCostComponent(),
              KAluminumWastageCostComponent(),
              !_provider.is2Saved ? KSelectCotingTypeComponent() : Container(),
              !_provider.is2Saved
                  ? KGlassShutterPlusMinusComponent()
                  : Container(),
              KSaveEditButtonComponent(
                onSave: () {
                  _provider.setIs2SetTrue();
                },
                onEdit: () {
                  _provider.setIs2SetFalse();
                },
              ),
              KGlassCostPSFComponent(),
              KOtherCostingComponent(),
              KOnePisScrewCostComponent(),
              KSixMMWoolPileComponent(),
              KAddSubmitButtonComponent(
                onAddTap: () {},
                onSubmitTap: () {
                  if (!_formKey.currentState!.validate()) {
                    print("success");
                  }
                },
              ),
              KQuatestionFormateComponent(),
              KQuantityFormateComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
